.class public final Lo/Ht$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ht;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lo/Ht;


# direct methods
.method constructor <init>(Lo/Ht;)V
    .locals 0

    iput-object p1, p0, Lo/Ht$Application;->d:Lo/Ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 25
    iget-object p1, p0, Lo/Ht$Application;->d:Lo/Ht;

    invoke-virtual {p1}, Lo/Ht;->o()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    iget-object p1, p0, Lo/Ht$Application;->d:Lo/Ht;

    invoke-virtual {p1}, Lo/Ht;->r()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/Ht$Application;->d:Lo/Ht;

    invoke-virtual {v0}, Lo/Ht;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;-><init>(Lo/Ht$Application;)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method
