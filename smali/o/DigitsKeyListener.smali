.class public final Lo/DigitsKeyListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/InputBinding;

.field private final e:Lo/DateKeyListener;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/DateKeyListener;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DigitsKeyListener;->d:Lo/InputBinding;

    iput-object p2, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 4

    .line 12
    iget-object v0, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v0}, Lo/DateKeyListener;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label_gift_applied_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v2}, Lo/DateKeyListener;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v2}, Lo/DateKeyListener;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v2}, Lo/DateKeyListener;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_NFT"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_0
    iget-object v2, p0, Lo/DigitsKeyListener;->d:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v2, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v2}, Lo/DateKeyListener;->d()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DURATION"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lo/DigitsKeyListener;->e:Lo/DateKeyListener;

    invoke-virtual {v0}, Lo/DateKeyListener;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v1, p0, Lo/DigitsKeyListener;->d:Lo/InputBinding;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gV:I

    invoke-virtual {v1, v2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "giftAmount"

    .line 24
    invoke-virtual {v1, v2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
