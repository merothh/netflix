.class final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;->a(Lcom/netflix/model/leafs/originals/interactive/Button;Lcom/netflix/model/leafs/originals/interactive/Button$Label;Lcom/netflix/model/leafs/originals/interactive/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;

.field final synthetic b:Lo/GridView;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/Action;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->b:Lo/GridView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->d:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x3

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->b:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    const-string v0, "it"

    .line 195
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 197
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->d:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Action;->newSegmentId()Ljava/lang/String;

    move-result-object v6

    .line 198
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->d:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Action;->newTimeMs()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 199
    :goto_0
    invoke-static {v6}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v6, :cond_1

    .line 200
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 202
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1$2;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$1;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v4

    const/4 v7, 0x0

    move-object v5, v6

    .line 200
    invoke-interface/range {v2 .. v8}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "no default segment set for Interstitial_PostPlay start Button for Interactive titles"

    .line 210
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
