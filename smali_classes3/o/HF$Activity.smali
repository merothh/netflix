.class public final Lo/HF$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HF;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo/HF;


# direct methods
.method constructor <init>(Lo/HF;)V
    .locals 0

    iput-object p1, p0, Lo/HF$Activity;->c:Lo/HF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 19
    iget-object p1, p0, Lo/HF$Activity;->c:Lo/HF;

    invoke-virtual {p1}, Lo/HF;->o()Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lo/HF$Activity;->c:Lo/HF;

    invoke-virtual {v0}, Lo/HF;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/HF$Activity;->c:Lo/HF;

    invoke-virtual {v1}, Lo/HF;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;-><init>(Lo/HF$Activity;)V

    check-cast v2, Lo/alO;

    invoke-static {p1, v0, v1, v2}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method
