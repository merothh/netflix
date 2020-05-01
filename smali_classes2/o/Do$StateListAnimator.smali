.class final Lo/Do$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;->e(Z)V
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
        "Lo/FC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/FC;)V
    .locals 6

    .line 223
    instance-of v0, p1, Lo/FC$Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0, v1}, Lo/Do;->c(Lo/Do;Z)V

    .line 225
    check-cast p1, Lo/FC$Application;

    invoke-virtual {p1}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lo/Bb;

    invoke-static {v0, v1}, Lo/Do;->b(Lo/Do;Lo/Bb;)V

    .line 228
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0, p1}, Lo/Do;->c(Lo/Do;Lo/Bc;)V

    goto/16 :goto_0

    .line 227
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.details.ShowDetails"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_1
    instance-of v0, p1, Lo/FC$AssistContent;

    if-eqz v0, :cond_2

    .line 230
    check-cast p1, Lo/FC$AssistContent;

    invoke-virtual {p1}, Lo/FC$AssistContent;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 231
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-virtual {p1}, Lo/FC$AssistContent;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lo/Do;->c(Lo/Do;Ljava/util/List;)V

    goto/16 :goto_0

    .line 233
    :cond_2
    instance-of v0, p1, Lo/FC$TaskStackBuilder;

    if-eqz v0, :cond_7

    .line 234
    check-cast p1, Lo/FC$TaskStackBuilder;

    invoke-virtual {p1}, Lo/FC$TaskStackBuilder;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 237
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0}, Lo/Do;->a(Lo/Do;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 238
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0, p1}, Lo/Do;->c(Lo/Do;Ljava/util/List;)V

    .line 241
    :cond_3
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0}, Lo/Do;->d(Lo/Do;)I

    move-result v0

    const-string v2, " for show "

    const-string v3, " with season count="

    if-gez v0, :cond_4

    .line 243
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPY-12784: negative currSeasonIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v5}, Lo/Do;->d(Lo/Do;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v2}, Lo/Do;->c(Lo/Do;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 247
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_8

    .line 248
    iget-object p1, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {p1, v1}, Lo/Do;->c(Lo/Do;I)V

    goto/16 :goto_0

    .line 250
    :cond_4
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0}, Lo/Do;->d(Lo/Do;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 253
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lo/Do;->c(Lo/Do;I)V

    .line 254
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPY-12784: currSeasonIndex="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v4}, Lo/Do;->d(Lo/Do;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {p1}, Lo/Do;->c(Lo/Do;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0}, Lo/Do;->d(Lo/Do;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    .line 264
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object v0

    .line 265
    const-class v1, Lo/FH;

    .line 266
    new-instance v2, Lo/FH$SharedElementCallback;

    invoke-direct {v2, p1}, Lo/FH$SharedElementCallback;-><init>(Lo/Ba;)V

    check-cast v2, Lo/VintfObject;

    .line 264
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_0

    :cond_6
    return-void

    .line 271
    :cond_7
    instance-of v0, p1, Lo/FC$TaskDescription;

    if-eqz v0, :cond_8

    .line 272
    check-cast p1, Lo/FC$TaskDescription;

    invoke-virtual {p1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lo/Do$StateListAnimator;->e:Lo/Do;

    invoke-static {v0, p1}, Lo/Do;->c(Lo/Do;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lo/Do$StateListAnimator;->a(Lo/FC;)V

    return-void
.end method
