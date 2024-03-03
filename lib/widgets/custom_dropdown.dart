import 'package:flutter/material.dart';
 import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropDown{
 


Widget buildDropdown(
  BuildContext context,
    String label, List<String> items, String? value, ValueChanged<String?> onChanged, TextEditingController textEditingController) {
  return Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Change to white
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Change to white
                        ),
                      ),
                    ))
                .toList(),
            value: value,
            onChanged: onChanged,
            buttonStyleData: ButtonStyleData(
              height: 60,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              
                color: Colors.white.withOpacity(0.3), // Change to black
              ),
              elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              iconSize: 14,
              iconEnabledColor: Colors.black, // Change to white
              iconDisabledColor: Colors.grey, // Change to grey
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 260,
              width: MediaQuery.of(context).size.width/1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white

                ),
                color: Colors.white.withOpacity(0.3), // Change to black
              ),
              offset: const Offset(-10, -5),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(20),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: textEditingController,
              searchInnerWidgetHeight: 50,
              searchInnerWidget: Container(
                height: 50,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 4,
                  right: 8,
                  left: 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: 'Search for $label',
                    hintStyle: const TextStyle(fontSize: 12,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
            // Remove special characters from item and searchValue
            final cleanedItem = item.value!
                .replaceAll(RegExp(r'[^A-Za-z0-9_]'), '')
                .toLowerCase();
            final cleanedSearchValue = searchValue
                .replaceAll(RegExp(r'[^A-Za-z0-9_]'), '')
                .toLowerCase();

            return cleanedItem.contains(cleanedSearchValue);
          },
            ),
            // This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              if (!isOpen) {
                textEditingController.clear();
              }
            },
          ),
        ),
      );
}
}