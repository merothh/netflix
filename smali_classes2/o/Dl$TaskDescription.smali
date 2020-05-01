.class public final Lo/Dl$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Dl$TaskDescription;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lo/Dl$TaskDescription;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lo/DO;

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "parentView.context"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->bj:I

    .line 157
    iget-object v4, p0, Lo/Dl$TaskDescription;->e:Ljava/lang/String;

    .line 158
    iget-boolean p1, p0, Lo/Dl$TaskDescription;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    const/4 v5, 0x4

    .line 159
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v1, "PlayContextImp.IN_PLAYER_EPISODES_CONTEXT"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v6

    move-object v1, v0

    .line 154
    invoke-direct/range {v1 .. v6}, Lo/DO;-><init>(Landroid/content/Context;ILjava/lang/String;II)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
