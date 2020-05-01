.class public final Lo/WebViewZygote;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebViewProviderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo/AnalogClock;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lo/ActivityChooserModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/ActivityChooserModel;-><init>(ZILo/amc;)V

    check-cast v0, Lo/AnalogClock;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lo/AnalogClock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lo/AppSecurityPermissions;

    invoke-direct {v0, p1, p2}, Lo/AppSecurityPermissions;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Lo/AnalogClock;

    return-object v0
.end method

.method public b(Lo/WebViewFactoryProvider;)Lo/AnalogClock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WebViewFactoryProvider;",
            ")",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lo/AdapterViewAnimator;

    invoke-direct {v0, p1}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v0, Lo/AnalogClock;

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/types/MemberReferralShareable;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/android/sharing/impl/types/MemberReferralShareable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    return-object v0
.end method
