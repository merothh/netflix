.class Landroid/support/v4/text/ICUCompat$ICUCompatImplLollipop;
.super Ljava/lang/Object;
.source "ICUCompat.java"

# interfaces
.implements Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/text/ICUCompatApi23;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
