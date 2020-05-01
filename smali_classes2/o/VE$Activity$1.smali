.class final Lo/VE$Activity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE$Activity;->e(Ljava/util/Map$Entry;)Lio/reactivex/Observable;
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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lcom/netflix/model/leafs/advisory/Advisory;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/VE$Activity;


# direct methods
.method constructor <init>(Lo/VE$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lo/VE$Activity$1;->d(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final d(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AdvisoryUIPresenter"

    const-string v1, "Showing Advisory..."

    .line 166
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/leafs/advisory/Advisory;

    .line 169
    instance-of v0, p1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    iget-object v0, v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->contentType:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lo/VF;->d:[I

    invoke-virtual {v0}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 174
    :goto_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->cS:I

    goto :goto_1

    .line 173
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->cW:I

    goto :goto_1

    .line 172
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->cT:I

    goto :goto_1

    .line 171
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->cU:I

    .line 177
    :goto_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getMessage()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_6

    new-array v3, v2, [Ljava/lang/Object;

    .line 178
    move-object v4, p1

    check-cast v4, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    iget-object v4, v4, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->localizedDate:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lo/aev;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 180
    :cond_6
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_4
    iget-object v1, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v1, v1, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v1}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v1

    const-string v3, "localizedMessage"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;->getSecondaryMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lo/Wu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object p1, p1, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {p1}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object p1

    iget-object v0, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->b(Lo/VE;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lo/Wu;->b(ZLjava/lang/String;)V

    goto :goto_5

    .line 186
    :cond_7
    instance-of v0, p1, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v0

    check-cast p1, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    invoke-interface {v0, p1}, Lo/Wu;->e(Lcom/netflix/model/leafs/advisory/ContentAdvisory;)V

    .line 188
    iget-object p1, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object p1, p1, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {p1}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object p1

    iget-object v0, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->b(Lo/VE;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/Wu;->b(ZLjava/lang/String;)V

    goto :goto_5

    .line 191
    :cond_8
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v0

    .line 193
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "advisory.message"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/Advisory;->getSecondaryMessage()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-interface {v0, v2, p1}, Lo/Wu;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object p1, p1, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {p1}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object p1

    iget-object v0, p0, Lo/VE$Activity$1;->c:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->b(Lo/VE;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/Wu;->b(ZLjava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method
