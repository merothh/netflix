.class final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d(Lcom/netflix/model/leafs/originals/interactive/Button;Lcom/netflix/model/leafs/originals/interactive/Button$Label;Lcom/netflix/model/leafs/originals/interactive/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/Action;

.field final synthetic b:Lo/GridView;

.field final synthetic c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;

.field final synthetic d:Lo/GridView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;Lo/GridView;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->b:Lo/GridView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->d:Lo/GridView;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->a:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x3

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 255
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->b:Lo/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->d:Lo/GridView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lo/GridView;->setVisibility(I)V

    .line 257
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 258
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->a:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Action;->newSegmentId()Ljava/lang/String;

    move-result-object v5

    .line 259
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->a:Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Action;->newTimeMs()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;->c:Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v5

    .line 261
    invoke-interface/range {v1 .. v7}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    goto :goto_1

    .line 270
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "no default segment set for Interstitial_PostPlay start Button for Interactive titles"

    .line 271
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
