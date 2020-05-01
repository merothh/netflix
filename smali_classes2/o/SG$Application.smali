.class public final Lo/SG$Application;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/UpdateEngine;

.field private final e:Lo/ES;


# direct methods
.method public constructor <init>(Lo/UpdateEngine;Lo/ES;Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventBusFactory"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lo/FU;-><init>()V

    iput-object p1, p0, Lo/SG$Application;->b:Lo/UpdateEngine;

    iput-object p2, p0, Lo/SG$Application;->e:Lo/ES;

    iput-object p3, p0, Lo/SG$Application;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 8

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lo/FU;->c(Landroid/view/View;)V

    .line 40
    new-instance v1, Lo/EO;

    .line 41
    new-instance v0, Lo/FD;

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lo/SG$Application;->b:Lo/UpdateEngine;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/FD;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView$DisplayMode;ILo/amc;)V

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    .line 42
    iget-object p1, p0, Lo/SG$Application;->b:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    .line 43
    iget-object p1, p0, Lo/SG$Application;->b:Lo/UpdateEngine;

    invoke-virtual {p1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v4

    .line 44
    iget-object v5, p0, Lo/SG$Application;->e:Lo/ES;

    .line 45
    iget-object v6, p0, Lo/SG$Application;->a:Ljava/lang/String;

    .line 40
    invoke-direct/range {v1 .. v6}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    return-void
.end method
