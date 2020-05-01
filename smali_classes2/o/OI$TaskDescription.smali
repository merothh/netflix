.class Lo/OI$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/OI;


# direct methods
.method public constructor <init>(Lo/OI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1, p2}, Lo/Ai;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_1

    .line 132
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    move-object v0, p1

    check-cast v0, Lo/Bc;

    invoke-virtual {p2, v0}, Lo/OI;->b(Lo/Bc;)V

    .line 134
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p2}, Lo/OI;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 135
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-interface {p1}, Lo/AS;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/OI;->b(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-interface {p1}, Lo/AS;->V()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/OI;->d(Ljava/lang/Integer;)V

    .line 139
    :cond_0
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/AsyncSubject;->onNext(Ljava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/AsyncSubject;->onComplete()V

    :cond_1
    return-void
.end method

.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2}, Lo/Ai;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 148
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    move-object v0, p1

    check-cast v0, Lo/Bc;

    invoke-virtual {p2, v0}, Lo/OI;->b(Lo/Bc;)V

    .line 149
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-interface {p1}, Lo/AX;->aW()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/OI;->b(Z)V

    .line 151
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/AsyncSubject;->onNext(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/AsyncSubject;->onComplete()V

    :cond_0
    return-void
.end method

.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1, p2}, Lo/Ai;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 116
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    move-object v0, p1

    check-cast v0, Lo/Bc;

    invoke-virtual {p2, v0}, Lo/OI;->b(Lo/Bc;)V

    .line 117
    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result p1

    invoke-virtual {p2, p1}, Lo/OI;->b(Z)V

    .line 121
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    iget-object p2, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/AsyncSubject;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lo/OI$TaskDescription;->b:Lo/OI;

    invoke-virtual {p1}, Lo/OI;->b()Lio/reactivex/subjects/AsyncSubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/AsyncSubject;->onComplete()V

    :cond_0
    return-void
.end method
