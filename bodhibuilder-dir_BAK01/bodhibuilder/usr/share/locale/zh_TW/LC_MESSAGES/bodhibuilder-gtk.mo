��    T      �  q   \         �   !  m   �    ?  �   [	     2
  	   :
  :   D
  L   
     �
     �
     �
  *     /   -  /   ]  =   �     �     �  /   �     $     B  %   I     o  	   �     �     �     �  =   �  ;   �  3     _   N     �     �     �     �  Q   �  �   @  1   �  S   !  S   u  Q   �                &  
   -     8     P     _  -   g     �          !     1     H     O     m     �     �  6   �     �     �  (        1     B     �  ;   �  Q         m     �     �  "   �  )   �       4        G     P  n   b  j   �  A   <  T   ~     �  �   �  �   �  Y   ^  �  �  �   �  l   E    �  �   �     y     �  6   �  U   �          '     E  '   R  *   z  -   �  =   �             #   ;     _     ~  =   �     �     �     �  	   �     �  B   �  ;   4  '   p  a   �     �              	   4   ?   >   �   ~   1   2!  p   d!  ^   �!  K   4"     �"     �"     �"  
   �"     �"  !   �"     �"  %   �"     #     �#     �#     �#     �#     �#     �#     �#     	$  4    $     U$     h$  $   o$     �$  i   �$     %  1   '%  8   Y%      �%     �%     �%     �%  %   &  	   (&  3   2&     f&     v&  h   �&  b   �&  ;   O'  E   �'     �'  �   �'  �   �(  S   )         I                    9   "          D      &             H   O      (      '   +   ,   R      <            K   ?           3                     %   5          *   J   4             E       /   >           S       $                     P       B   
   Q   F   8       T            -   N               G   M   A   	   2   6   !   #      .      =       )      C   ;   L   :   0   7          1              @            %(filename)s has been copied to %(grub_bg)s and is the default background for grub. Click OK to update grub with the new settings so you can see your picture on the next boot. %s has been copied to /etc/remastersys/isolinux/splash.png becoming the default background for the LIVE menu. <span color="red">WARNING: make sure you chose user with a SMALL home directory, not some with gigabytes of data!
Even so, you must manually check the contents of /etc/skel afterwards, and make sure it does not contain sensitive information (especially in the hidden folders)!</span> <span color="red">Working directory must be on a drive formatted with a linux filesystem. Remastersys will create the "remastersys" working folder in this folder and will not harm any other files or folders.</span> Actions All files Are you sure you want to delete the contents of /etc/skel? Auto-select the plymouth theme, based on the update-alternatives information Automatic selection Available plymouth themes: Backup Backup complete system including user data Boot menu picture for the installed environment Boot menu picture for the live cd (640x480 PNG) Bulgarian - Krasimir S. Stefanov <lokiisyourmaster@gmail.com> CD Label Clear everything from /etc/skel Completed. Click OK to return to the main menu. Copying files, please wait... Create Create a simple static plymouth theme Default settings Directory Dist Distcdfs Distiso Done! Now plymouth will use the default, auto-selected theme. English - Krasimir S. Stefanov <lokiisyourmaster@gmail.com> Enter your password to perform administrative tasks Enter your plymouth theme name. eg. Remastersys Theme (please use only alphanumeric characters) Filename Files to exclude GRUB has been updated. Home directory In order to be able to preview plymouth themes, you have to install plymouth-x11! It is necessary to close all other windows and unmount any network shares while running Remastersys Backup. Please do so now and then click OK when you are ready to continue. Krasimir S. Stefanov <lokiisyourmaster@gmail.com> Make a Distributable copy filesystem only - good if you want to add files to the cd Make a Distributable copy to share with friends - both cdfs and iso will be created Make distributable iso file only - cd filesystem must have been completed already Name Name: Output PNG Images Please, select a theme! Plymouth theme Preview Preview the currently selected plymouth theme PyGTK GUI for Remastersys
Copyright (C) 2011 Krasimir S. Stefanov, Tony Brijeski
Licence: GPLv3.0
http://www.gnu.org/licenses/. Remastersys Remastersys-GTK Remove temporary files Select Select 1920x1080 PNG image... Select 640x480 PNG image... Select image... Select plymouth theme Select the user, whose settings to be used as default: Select working directory Settings Show install icon on Backup mode desktop Squashfs options The livecd filesystem does not exist. Click OK to go back to the main menu and try the normal Dist mode or the Dist CDFS again. The process was interrupted! The theme "%s" already exists! Do you want to overwrite it? This will remove all the files from the temporary directory. Click OK to proceed. Tony Brijeski <tb6517@yahoo.com> URL for USB Creator Updating GRUB, please wait... Updating initramfs, please wait... Use the currently selected plymouth theme User User, whose current settings will be used as default Username Working directory You have selected Backup Mode. Do not interrupt this process. Click OK to Start the Backup LiveCD/DVD process. You have selected Dist CDFS Mode. Click OK to Start the Distributable LiveCD/DVD filesystem build process. You have selected Dist ISO Mode. Click OK to create the iso file. You have selected Dist Mode. Click OK to Start the Distributable LiveCD/DVD process. You must specify theme name! Your %(iso)s and %(iso)s.md5 files are ready in %(dir)s. It is recommended to test it in a virtual machine or on a rewritable cd/dvd to ensure it works as desired. Click on OK to return to the main menu. Your livecd filesystem is ready in %s. You can now add files to the cd and then run the Distiso option when you are done. Click on OK to return to the main menu. Your plymouth theme named %(theme_name)s with the picture %(theme_pic)s has been created. Project-Id-Version: remastersys
Report-Msgid-Bugs-To: tb6517@yahoo.com
POT-Creation-Date: 2011-11-26 01:24+0200
PO-Revision-Date: 
Last-Translator: kentxchang <kentxchang@gmail.com>
Language-Team: kentxchang <kentxchang@gmail.com>
Language: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Poedit-Language: Chinese
X-Poedit-KeywordsList: _
X-Poedit-Basepath: .
X-Poedit-Country: TAIWAN
X-Poedit-SearchPath-0: .
 %(filename)s 已經複製到 %(grub_bg)s 而且設為grub開機選單的預設背景圖，按下OK來更新你的grub，下次你重新開機時，你將可以在grub選單中看到你的圖片。 %s 已經複製到 /etc/remastersys/isolinux/splash.png ，此圖片將成為LIVE選單的預設背景圖。 <span color="red">警告: 請確定你所選擇是一個較小的家目錄，不是一個包含大量資料的家目錄
即便如此，你也必需手動檢查 /etc/skel 中的內容，並確保它不會包含敏感訊息 (尤其是在隱藏資料夾中)!</span> <span color="red">工作目錄必需在Linux的文件系統格式中. Remastersys 將會新增一個名為 "remastersys" 的工作目錄，並不會損害任何其他文件或資料夾</span> 動作 所有檔案 你確定你要刪除 /etc/skel 中所有的內容嗎? 以update-alternatives 為基礎，自動選擇plymouth主題（開機動畫主題） 自動選擇 可使用的 plymouth 佈景: 完整備份 包含使用者資料完整備份系統 安裝環境的開機選單(grub)背景圖 Live CD的開機選單背景圖 (640x480 PNG) Bulgarian - Krasimir S. Stefanov <lokiisyourmaster@gmail.com> CD標籤 清除 /etc/skel 下所有資料 完成，按下OK回到主選單。 檔案複製中，請稍後... 新增 新增一個簡單的靜態 plymouth 佈景（開機動畫） 預設的設定 目錄 Dist Distcdfs  Distiso 完成！現在 plymouth將使用預設，自動選取的佈景。 English - Krasimir S. Stefanov <lokiisyourmaster@gmail.com> 輸入您的密碼來執行管理任務 輸入你的 plymouth 佈景名稱。如： Remastersys Theme (只能使用英文字母及數字) 檔案名稱 要排除的檔案 GRUB已經更新完成。 家目錄 為了預覽 plymouth 佈景，你必需安裝 plymouth-x11 ！ 當執行Remastersys Backup時，必需關閉所有的視窗且取消掛載任何的網路分享資料夾。請務必這麼做，然後當你準備好要繼續時，請按下OK。 Krasimir S. Stefanov <lokiisyourmaster@gmail.com> 只產生一個客製化的CD檔案系統－如果你想要在CD中加入額外的檔案，請使用這個選項 產生一個客製化的備份來跟朋友分享－同時產生cdfs (CD的檔案系統)及 iso 只產生客製化的 iso檔案 - CD的檔案系統(cdfs)必需已經存在 名稱 名稱: 輸出 PNG 圖片 請選擇一個佈景! Plymouth 佈景（開機動畫） 預覽 預覽目前選取的 plymouth 佈景 PyGTK GUI for Remastersys
Copyright (C) 2011 Krasimir S. Stefanov, Tony Brijeski
Licence: GPLv3.0
http://www.gnu.org/licenses/. Remastersys Remastersys-GTK 移除暫存檔案 選擇 選擇 1920x1080 PNG 圖片... 擇擇 640x480 PNG 圖片... 選擇圖片... 選擇 plymouth 佈景 選擇你想要保留各軟體預設值的使用者: 選擇工作目錄 設定 在桌面放置安裝系統的圖示 Squashfs 選項 LiveCD檔案系統不存在，按下OK回到主選單，並且再試一次一般Dist模式或Dist CDFS。 程式程序被中斷！ 佈景 "%s" 已經存在！你想要覆寫它嗎? 將要暫存目錄刪除所有檔案。按下OK執行。 Tony Brijeski <tb6517@yahoo.com> URL for USB Creator 更新 GRUB，請稍後... 更新 initramfs，請稍後... 使用目前選擇的 plymouth 佈景 使用者 當前使用者的設定值將會被設為預設值 使用者名稱 工作目錄 你選擇了完整備份模式。不要中斷程序，按下OK開始執行完整備份 LiveCD/DVD程序. 你選擇了Dist CDFS 模式。按下OK開啟建立一個客製化 LiveCD/DVD檔案系統程序。 你選擇了Dist ISO 模式。按下OK開始建立iso檔。 你選擇了 Dist 模式。按下OK開始客製化LiveCD/DVD程序。 你必需指定佈景名稱! 你的 %(iso)s 及 %(iso)s.md5 檔案已經存放在 %(dir)s。建議在虛擬機或可重覆讀寫的CD /DVD中測試。按下OK回到主選單。 你的LiveCD 檔案系統已經存放在 %s。你可以新增檔案到CD中，然後再執行Distiso選項來建立iso檔。按下OK回到主選單。 你使用%(theme_pic)s 建立的plymouth佈景 %(theme_name)s 已經建立完成。 