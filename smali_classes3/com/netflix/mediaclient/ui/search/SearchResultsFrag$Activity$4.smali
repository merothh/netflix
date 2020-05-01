.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e(Landroid/os/Bundle;Lo/DateTimeView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

.field final synthetic e:Lo/DateTimeView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;Lo/DateTimeView;I)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;->d:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;->e:Lo/DateTimeView;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;->e:Lo/DateTimeView;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity$4;->b:I

    invoke-virtual {v0, v1}, Lo/DateTimeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method
