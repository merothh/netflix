.class public final Lo/Fm;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fm$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/Fm$TaskDescription;


# instance fields
.field private final a:Lo/aka;

.field private final b:I

.field private final e:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Fm$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fm$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fm;->d:Lo/Fm$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->M:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lo/Fm;->e:Landroid/view/ViewStub;

    .line 24
    invoke-virtual {p0}, Lo/Fm;->h()Landroid/view/ViewStub;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewStub;->getId()I

    move-result p1

    iput p1, p0, Lo/Fm;->b:I

    .line 26
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoContentWarningUIView_Ab18255$contentWarningView$2;-><init>(Lo/Fm;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fm;->a:Lo/aka;

    return-void

    .line 22
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/Fm;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/Fm;->i()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/Fm;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lo/Fm;->b:I

    return v0
.end method

.method public final c(Lcom/netflix/model/leafs/originals/ContentWarning;)V
    .locals 3

    const-string v0, "contentWarningData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/ContentWarning;->url()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/ContentWarning;->message()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-direct {p0}, Lo/Fm;->i()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lo/Fm$Activity;

    invoke-direct {v2, p0, p1, v0}, Lo/Fm$Activity;-><init>(Lo/Fm;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/Fm;->h()Landroid/view/ViewStub;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public h()Landroid/view/ViewStub;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/Fm;->e:Landroid/view/ViewStub;

    return-object v0
.end method
