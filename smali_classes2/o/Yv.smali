.class public final Lo/Yv;
.super Lo/Yz;
.source ""


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final c:Lo/ams;

.field private final d:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/Yv;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "downloadButton"

    const-string v4, "getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton_Ab18242;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/Yv;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;",
            "Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p6}, Lo/Yz;-><init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;I)V

    iput-object p2, p0, Lo/Yv;->d:Lo/alB;

    iput-object p3, p0, Lo/Yv;->g:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    iput-object p4, p0, Lo/Yv;->j:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    iput-object p5, p0, Lo/Yv;->i:Ljava/lang/String;

    iput p6, p0, Lo/Yv;->h:I

    iput-object p7, p0, Lo/Yv;->f:Landroid/content/Context;

    .line 27
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->oK:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Yv;->c:Lo/ams;

    .line 30
    sget-object p1, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {p1}, Lo/eD$Activity;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lo/Yv;->h()Lo/ListView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lo/ListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final p()Lo/Qi;
    .locals 3

    iget-object v0, p0, Lo/Yv;->c:Lo/ams;

    sget-object v1, Lo/Yv;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Qi;

    return-object v0
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V
    .locals 1

    const-string v0, "previewItem"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Lo/Yz;->b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V

    .line 69
    invoke-virtual {p0}, Lo/Yv;->m()V

    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V
    .locals 1

    const-string v0, "previewItem"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lo/Yz;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V

    .line 60
    invoke-virtual {p0}, Lo/Yv;->m()V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 36
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lo/Yv;->p()Lo/Qi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Qi;->setTintColor(I)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lo/Yz;->e(I)V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 43
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lo/Yv;->f:Landroid/content/Context;

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/Yv;->f()Lo/Yn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Yn;->a()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0}, Lo/Yv;->p()Lo/Qi;

    move-result-object v2

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    check-cast v1, Lo/As;

    invoke-virtual {v2, v1, v0}, Lo/Qi;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method
