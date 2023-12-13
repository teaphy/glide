-verbose
# Use ProGuard only to get rid of unused classes
-dontobfuscate
-dontoptimize
-keepattributes *
-keep class !com.bumptech.glide.repackaged.**,com.bumptech.glide.**

# Keep the entry point to this library, see META-INF\services\javax.annotation.processing.Processor
-keep class com.bumptech.glide.annotation.compiler.** {*;}


# "duplicate definition of library class"
-dontnote sun.applet.**
# "duplicate definition of library class"
-dontnote sun.tools.jar.**
# Reflective accesses in com.google.common.util.concurrent.* and some others
-dontnote com.bumptech.glide.repackaged.com.google.common.**
# com.google.common.collect.* and some others (….common.*.*)
-dontwarn com.google.j2objc.annotations.**
# com.google.common.util.concurrent.FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator
-dontwarn org.codehaus.mojo.animal_sniffer.**
#-dontwarn **
