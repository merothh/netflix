.class Lo/im$2;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/im;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field c:J

.field d:Z

.field e:I

.field final synthetic h:Lo/im;


# direct methods
.method constructor <init>(Lo/im;JJLjava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/im$2;->h:Lo/im;

    iput-object p6, p0, Lo/im$2;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lo/im$2;->d:Z

    .line 86
    iput p1, p0, Lo/im$2;->a:I

    const/4 p1, 0x2

    .line 88
    iput p1, p0, Lo/im$2;->e:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 92
    iget p1, p0, Lo/im$2;->e:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    return-void

    .line 95
    :cond_0
    iget v0, p0, Lo/im$2;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/im$2;->a:I

    .line 96
    iget v0, p0, Lo/im$2;->a:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-long v3, v1

    iput-wide v3, p0, Lo/im$2;->c:J

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const-wide/16 v3, 0x14

    .line 98
    iput-wide v3, p0, Lo/im$2;->c:J

    const/4 v0, 0x3

    const-string v3, "ModuleInstallSimulator"

    if-ne p1, v2, :cond_1

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dl_status = DOWNLOADED "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/im$2;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput v0, p0, Lo/im$2;->e:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dl_status = INSTALLING "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/im$2;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput v1, p0, Lo/im$2;->e:I

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dl_status = INSTALLED "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/im$2;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput p2, p0, Lo/im$2;->e:I

    .line 111
    :cond_3
    :goto_0
    new-instance p1, Lo/im$2$2;

    invoke-direct {p1, p0}, Lo/im$2$2;-><init>(Lo/im$2;)V

    .line 138
    iget-object p2, p0, Lo/im$2;->h:Lo/im;

    iget-object v0, p0, Lo/im$2;->b:Ljava/lang/String;

    invoke-static {p2, v0}, Lo/im;->d(Lo/im;Ljava/lang/String;)Lio/reactivex/ObservableEmitter;

    move-result-object p2

    .line 141
    iget v0, p0, Lo/im$2;->a:I

    if-eqz p2, :cond_4

    .line 155
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
