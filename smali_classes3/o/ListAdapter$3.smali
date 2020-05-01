.class public final Lo/ListAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebSyncManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ListAdapter;


# direct methods
.method constructor <init>(Lo/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 184
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {v0}, Lo/ListAdapter;->b(Lo/ListAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ListAdapter$ActionBar;

    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 186
    iget-object v1, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {v1, v0}, Lo/ListAdapter;->d(Lo/ListAdapter;I)V

    .line 188
    :cond_0
    sget-object v0, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 189
    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {v0}, Lo/ListAdapter;->c(Lo/ListAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-virtual {v0}, Lo/ListAdapter;->performClick()Z

    .line 192
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {v0, v1}, Lo/ListAdapter;->d(Lo/ListAdapter;Z)V

    .line 195
    :cond_1
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    :cond_2
    invoke-virtual {v0, v1}, Lo/ListAdapter;->setRepeatCount(I)V

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 201
    iget-object v0, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {v0}, Lo/ListAdapter;->b(Lo/ListAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ListAdapter$ActionBar;

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->j()Lo/ListAdapter$ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/ListAdapter$ActionBar;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/ListAdapter$ActionBar;->a(Z)V

    .line 204
    :cond_0
    iget-object p1, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-static {p1}, Lo/ListAdapter;->a(Lo/ListAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    invoke-virtual {p1}, Lo/ListAdapter;->j()V

    .line 206
    iget-object p1, p0, Lo/ListAdapter$3;->c:Lo/ListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ListAdapter;->a(Lo/ListAdapter;Z)V

    :cond_1
    return-void
.end method
