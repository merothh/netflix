.class public final Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;
.super Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;

.field private static final EXTRA_SHARE_TARGETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AnalogClock<",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/ExtrasShareable$ExtrasFeedItemParcelable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;->Companion:Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController$StateListAnimator;

    const/16 v0, 0x9

    new-array v0, v0, [Lo/AnalogClock;

    .line 18
    new-instance v2, Lo/AdapterViewAnimator;

    sget-object v3, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v3}, Lo/WebViewFactoryProvider$TaskDescription;->j()Lo/WebViewFactoryProvider;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v2, Lo/AnalogClock;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 19
    new-instance v2, Lo/AdapterViewAnimator;

    sget-object v3, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v3}, Lo/WebViewFactoryProvider$TaskDescription;->b()Lo/WebViewFactoryProvider;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v2, Lo/AnalogClock;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 20
    new-instance v2, Lo/ArrayAdapter;

    const/4 v4, 0x3

    invoke-direct {v2, v1, v1, v4, v1}, Lo/ArrayAdapter;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    invoke-virtual {v2}, Lo/ArrayAdapter;->a()Lo/AnalogClock;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 21
    new-instance v2, Lo/Adapter;

    invoke-direct {v2, v1, v1, v4, v1}, Lo/Adapter;-><init>(Lo/AbsSpinner;Lo/WebViewUpdateService;ILo/amc;)V

    invoke-virtual {v2}, Lo/Adapter;->b()Lo/AnalogClock;

    move-result-object v2

    aput-object v2, v0, v4

    .line 22
    new-instance v2, Lo/AdapterViewAnimator;

    sget-object v5, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v5}, Lo/WebViewFactoryProvider$TaskDescription;->c()Lo/WebViewFactoryProvider;

    move-result-object v5

    invoke-direct {v2, v5}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v2, Lo/AnalogClock;

    const/4 v5, 0x4

    aput-object v2, v0, v5

    .line 23
    new-instance v2, Lo/AdapterViewAnimator;

    sget-object v5, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v5}, Lo/WebViewFactoryProvider$TaskDescription;->i()Lo/WebViewFactoryProvider;

    move-result-object v5

    invoke-direct {v2, v5}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v2, Lo/AnalogClock;

    const/4 v5, 0x5

    aput-object v2, v0, v5

    .line 24
    new-instance v2, Lo/AdapterViewAnimator;

    sget-object v5, Lo/WebViewFactoryProvider;->b:Lo/WebViewFactoryProvider$TaskDescription;

    invoke-virtual {v5}, Lo/WebViewFactoryProvider$TaskDescription;->g()Lo/WebViewFactoryProvider;

    move-result-object v5

    invoke-direct {v2, v5}, Lo/AdapterViewAnimator;-><init>(Lo/WebViewFactoryProvider;)V

    check-cast v2, Lo/AnalogClock;

    const/4 v5, 0x6

    aput-object v2, v0, v5

    .line 25
    new-instance v2, Lo/ActivityChooserModel;

    invoke-direct {v2, v3}, Lo/ActivityChooserModel;-><init>(Z)V

    check-cast v2, Lo/AnalogClock;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 26
    new-instance v2, Lo/AppSecurityPermissions;

    invoke-direct {v2, v1, v1, v4, v1}, Lo/AppSecurityPermissions;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILo/amc;)V

    check-cast v2, Lo/AnalogClock;

    const/16 v1, 0x8

    aput-object v2, v0, v1

    .line 17
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;->EXTRA_SHARE_TARGETS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "shareTargets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/sharing/impl/ShareMenuController;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getEXTRA_SHARE_TARGETS$cp()Ljava/util/List;
    .locals 1

    .line 12
    sget-object v0, Lcom/netflix/mediaclient/android/sharing/impl/ExtrasShareMenuController;->EXTRA_SHARE_TARGETS:Ljava/util/List;

    return-object v0
.end method
