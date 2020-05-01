.class Lo/PKCS8EncodedKeySpec$Application;
.super Lo/PKCS8EncodedKeySpec$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PKCS8EncodedKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1754
    invoke-direct {p0}, Lo/PKCS8EncodedKeySpec$Activity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/PKCS8EncodedKeySpec$Application;)V
    .locals 0

    .line 1759
    invoke-direct {p0, p1}, Lo/PKCS8EncodedKeySpec$Activity;-><init>(Lo/PKCS8EncodedKeySpec$Activity;)V

    return-void
.end method

.method private c(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1779
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1781
    iput-object v0, p0, Lo/PKCS8EncodedKeySpec$Application;->k:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 1785
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1787
    invoke-static {p1}, Lo/AccessibilityEvent;->e(Ljava/lang/String;)[Lo/AccessibilityEvent$Application;

    move-result-object p1

    iput-object p1, p0, Lo/PKCS8EncodedKeySpec$Application;->m:[Lo/AccessibilityEvent$Application;

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    .line 1764
    invoke-static {p4, v0}, Lo/ViewParent;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 1768
    :cond_0
    sget-object p4, Lo/ECPublicKeySpec;->b:[I

    invoke-static {p1, p3, p2, p4}, Lo/ViewParent;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1770
    invoke-direct {p0, p1}, Lo/PKCS8EncodedKeySpec$Application;->c(Landroid/content/res/TypedArray;)V

    .line 1771
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
