.class final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "it"

    .line 164
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/anv;->c(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 309
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 164
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_2
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->w()Lo/TrustedTime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/TrustedTime;->d(I)V

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->x()Lo/TrustedTime;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/TrustedTime;->d(I)V

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;I)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object v0

    invoke-virtual {v0}, Lo/StatsLog;->n()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$AssistContent;->a(Ljava/lang/String;)V

    return-void
.end method
