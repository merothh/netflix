.class public Lo/IllegalArgumentException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IllegalArgumentException$Activity;,
        Lo/IllegalArgumentException$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Lo/IllegalArgumentException$Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/IllegalArgumentException$Application<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Lo/IllegalArgumentException$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/IllegalArgumentException$Activity<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mStarted:Z

    .line 45
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lo/IllegalArgumentException;->mReset:Z

    .line 47
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mContentChanged:Z

    .line 48
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/IllegalArgumentException;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    .line 410
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    .line 318
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, v0}, Lo/BufferedWriter;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .locals 1

    .line 144
    iget-object v0, p0, Lo/IllegalArgumentException;->mOnLoadCanceledListener:Lo/IllegalArgumentException$Activity;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0, p0}, Lo/IllegalArgumentException$Activity;->c(Lo/IllegalArgumentException;)V

    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p0, p1}, Lo/IllegalArgumentException$Application;->e(Lo/IllegalArgumentException;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lo/IllegalArgumentException;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean p2, p0, Lo/IllegalArgumentException;->mStarted:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mContentChanged:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    if-eqz p2, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_1
    iget-boolean p2, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lo/IllegalArgumentException;->mReset:Z

    if-eqz p2, :cond_3

    .line 563
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lo/IllegalArgumentException;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onForceLoad()V

    return-void
.end method

.method public isAbandoned()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .line 511
    iget-boolean v0, p0, Lo/IllegalArgumentException;->mStarted:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lo/IllegalArgumentException;->forceLoad()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mContentChanged:Z

    :goto_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILo/IllegalArgumentException$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/IllegalArgumentException$Application<",
            "TD;>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    if-nez v0, :cond_0

    .line 176
    iput-object p2, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    .line 177
    iput p1, p0, Lo/IllegalArgumentException;->mId:I

    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onReset()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mReset:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mStarted:Z

    .line 450
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    .line 451
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mContentChanged:Z

    .line 452
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .line 496
    iget-boolean v0, p0, Lo/IllegalArgumentException;->mProcessingChange:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mStarted:Z

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mReset:Z

    .line 284
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mAbandoned:Z

    .line 285
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lo/IllegalArgumentException;->mStarted:Z

    .line 381
    invoke-virtual {p0}, Lo/IllegalArgumentException;->onStopLoading()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Lo/BufferedWriter;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Lo/IllegalArgumentException;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Lo/IllegalArgumentException$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IllegalArgumentException$Application<",
            "TD;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lo/IllegalArgumentException;->mListener:Lo/IllegalArgumentException$Application;

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
