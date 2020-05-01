.class public final Lo/DynamicDrawableSpan;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/AccessibilityURLSpan;)V
    .locals 2

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepsParsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p2}, Lo/AccessibilityURLSpan;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lo/AccessibilityURLSpan;->a()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kd:I

    invoke-virtual {p1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Lo/AccessibilityURLSpan;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "currentStep"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lo/AccessibilityURLSpan;->a()Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "totalSteps"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 13
    :goto_1
    iput-object p1, p0, Lo/DynamicDrawableSpan;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .line 12
    iget-object v0, p0, Lo/DynamicDrawableSpan;->a:Ljava/lang/CharSequence;

    return-object v0
.end method
