.class public final Lo/DateTimeKeyListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/android/moneyball/fields/BooleanField;

.field private b:Z

.field private final c:Lo/InputBinding;

.field private d:Z

.field private final e:Lcom/netflix/android/moneyball/fields/StringField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/BooleanField;Lo/InputBinding;)V
    .locals 1

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    iput-object p2, p0, Lo/DateTimeKeyListener;->a:Lcom/netflix/android/moneyball/fields/BooleanField;

    iput-object p3, p0, Lo/DateTimeKeyListener;->c:Lo/InputBinding;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "profile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 24
    iget-object v0, p0, Lo/DateTimeKeyListener;->a:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/DateTimeKeyListener;->d:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lo/DateTimeKeyListener;->d:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lo/DateTimeKeyListener;->b:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lo/DateTimeKeyListener;->a:Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/DateTimeKeyListener;->b:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 41
    iget-boolean v0, p0, Lo/DateTimeKeyListener;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DateTimeKeyListener;->c:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->I:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->isRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/DateTimeKeyListener;->e:Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ownerName"

    invoke-static {v0, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lo/DateTimeKeyListener;->c:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ct:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method
