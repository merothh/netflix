.class public Lo/agx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Browser;


# instance fields
.field private a:Lo/OneTimeUseBuilder;

.field private d:Lo/OneTimeUseBuilder;

.field private e:Lo/OneTimeUseBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 4

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x340fd6e5    # -3.1478326E7f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x13e35a2f

    if-eq v0, v1, :cond_1

    const v1, 0x1a729577

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "titleSuggestions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "queryCompletions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "titles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    .line 58
    iget-object p1, p0, Lo/agx;->e:Lo/OneTimeUseBuilder;

    return-object p1

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_5
    iget-object p1, p0, Lo/agx;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 56
    :cond_6
    iget-object p1, p0, Lo/agx;->d:Lo/OneTimeUseBuilder;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x340fd6e5    # -3.1478326E7f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x13e35a2f

    if-eq v0, v1, :cond_1

    const v1, 0x1a729577

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "titleSuggestions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "queryCompletions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "titles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t know how to set key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewSearchMap"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    :cond_4
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agx;->e:Lo/OneTimeUseBuilder;

    goto :goto_2

    .line 101
    :cond_5
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agx;->a:Lo/OneTimeUseBuilder;

    goto :goto_2

    .line 100
    :cond_6
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agx;->d:Lo/OneTimeUseBuilder;

    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 5

    .line 68
    invoke-virtual {p0, p1}, Lo/agx;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x340fd6e5    # -3.1478326E7f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x13e35a2f

    if-eq v1, v2, :cond_2

    const v2, 0x1a729577

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "titleSuggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "queryCompletions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "titles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    .line 76
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agx;->e:Lo/OneTimeUseBuilder;

    return-object p1

    .line 77
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_6
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agx;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 74
    :cond_7
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agx;->d:Lo/OneTimeUseBuilder;

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, v0}, Lo/agx;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method
