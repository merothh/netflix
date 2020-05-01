.class public final Lo/InputMethodInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextToSpeech;


# instance fields
.field private final c:Lo/InputMethodSession;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/InputMethodSession;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageKey"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/InputMethodInfo;->c:Lo/InputMethodSession;

    iput-object p2, p0, Lo/InputMethodInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "fieldId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lo/InputMethodInfo;->c:Lo/InputMethodSession;

    iget-object v1, p0, Lo/InputMethodInfo;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lo/InputMethodSession;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/netflix/android/moneyball/fields/Field;)V
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lo/InputMethodInfo;->c:Lo/InputMethodSession;

    iget-object v1, p0, Lo/InputMethodInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Lcom/netflix/android/moneyball/fields/Field;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lo/InputMethodInfo;->c:Lo/InputMethodSession;

    iget-object v1, p0, Lo/InputMethodInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lo/InputMethodSession;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
