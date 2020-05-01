.class public final Lo/AlignmentSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lo/InputBinding;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/TimeKeyListener;)V
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AlignmentSpan;->c:Lo/InputBinding;

    .line 10
    invoke-virtual {p2}, Lo/TimeKeyListener;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lo/AlignmentSpan;->c:Lo/InputBinding;

    invoke-virtual {v1, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lo/AlignmentSpan;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Lo/TimeKeyListener;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/AlignmentSpan;->c:Lo/InputBinding;

    invoke-virtual {v0, p1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lo/AlignmentSpan;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lo/TimeKeyListener;->b()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/AlignmentSpan;->c:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eZ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lo/AlignmentSpan;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lo/AlignmentSpan;->c:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nZ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_1
    iput-object p1, p0, Lo/AlignmentSpan;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/AlignmentSpan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/AlignmentSpan;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/AlignmentSpan;->e:Ljava/lang/String;

    return-object v0
.end method
