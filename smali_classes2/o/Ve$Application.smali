.class public final Lo/Ve$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Vr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ve;->e(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/template/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/template/Element;

.field final synthetic b:Landroid/view/View;

.field final synthetic e:Lo/Ve;


# direct methods
.method constructor <init>(Lo/Ve;Lcom/netflix/model/leafs/originals/interactive/template/Element;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/originals/interactive/template/Element;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lo/Ve$Application;->e:Lo/Ve;

    iput-object p2, p0, Lo/Ve$Application;->a:Lcom/netflix/model/leafs/originals/interactive/template/Element;

    iput-object p3, p0, Lo/Ve$Application;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ak_()V
    .locals 4

    .line 147
    iget-object v0, p0, Lo/Ve$Application;->a:Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getDefault()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->styleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lo/Ve$Application;->e:Lo/Ve;

    iget-object v2, p0, Lo/Ve$Application;->b:Landroid/view/View;

    invoke-virtual {v1}, Lo/Ve;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget-object v3, p0, Lo/Ve$Application;->e:Lo/Ve;

    invoke-virtual {v3}, Lo/Ve;->e()F

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lo/Ve;->a(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 151
    :cond_0
    iget-object v0, p0, Lo/Ve$Application;->b:Landroid/view/View;

    instance-of v1, v0, Lo/Vr;

    if-eqz v1, :cond_1

    .line 152
    check-cast v0, Lo/Vr;

    invoke-interface {v0}, Lo/Vr;->ak_()V

    .line 154
    :cond_1
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    :cond_2
    return-void
.end method

.method public al_()V
    .locals 4

    .line 171
    iget-object v0, p0, Lo/Ve$Application;->a:Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getSelected()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->styleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lo/Ve$Application;->e:Lo/Ve;

    iget-object v2, p0, Lo/Ve$Application;->b:Landroid/view/View;

    invoke-virtual {v1}, Lo/Ve;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget-object v3, p0, Lo/Ve$Application;->e:Lo/Ve;

    invoke-virtual {v3}, Lo/Ve;->e()F

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lo/Ve;->a(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 175
    :cond_0
    iget-object v0, p0, Lo/Ve$Application;->b:Landroid/view/View;

    instance-of v1, v0, Lo/Vr;

    if-eqz v1, :cond_1

    .line 176
    check-cast v0, Lo/Vr;

    invoke-interface {v0}, Lo/Vr;->al_()V

    .line 178
    :cond_1
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    :cond_2
    return-void
.end method

.method public c()V
    .locals 4

    .line 159
    iget-object v0, p0, Lo/Ve$Application;->a:Lcom/netflix/model/leafs/originals/interactive/template/Element;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->getFocused()Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;->styleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lo/Ve$Application;->e:Lo/Ve;

    iget-object v2, p0, Lo/Ve$Application;->b:Landroid/view/View;

    invoke-virtual {v1}, Lo/Ve;->b()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/Style;

    iget-object v3, p0, Lo/Ve$Application;->e:Lo/Ve;

    invoke-virtual {v3}, Lo/Ve;->e()F

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lo/Ve;->a(Lo/Ve;Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/Style;F)V

    .line 163
    :cond_0
    iget-object v0, p0, Lo/Ve$Application;->b:Landroid/view/View;

    instance-of v1, v0, Lo/Vr;

    if-eqz v1, :cond_1

    .line 164
    check-cast v0, Lo/Vr;

    invoke-interface {v0}, Lo/Vr;->c()V

    .line 166
    :cond_1
    sget-object v0, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast v0, Lo/MessagePdu;

    :cond_2
    return-void
.end method
