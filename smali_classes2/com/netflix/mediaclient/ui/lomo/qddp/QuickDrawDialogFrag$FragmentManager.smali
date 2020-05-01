.class public final Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag$FragmentManager;
.super Lo/WebChromeClient$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lo/WebChromeClient$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/WebChromeClient;)V
    .locals 1

    const-string v0, "frag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1}, Lo/WebChromeClient$Application;->d(Lo/WebChromeClient;)V

    .line 214
    sget-object p1, Lo/LL;->d:Lo/LL;

    invoke-virtual {p1}, Lo/LL;->a()V

    return-void
.end method
