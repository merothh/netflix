.class public Lo/SystemHealthManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SystemHealthManager$TaskDescription;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/SystemHealthManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SystemHealthManager;->e:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    const-class v1, [Lo/ServiceHealthStats;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/ServiceHealthStats;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lo/SystemHealthManager;->a:Ljava/util/HashSet;

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 39
    iget-object v4, v3, Lo/ServiceHealthStats;->hostnamepatterns:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 40
    iget-object v4, p0, Lo/SystemHealthManager;->a:Ljava/util/HashSet;

    iget-object v5, v3, Lo/ServiceHealthStats;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v4, v3, Lo/ServiceHealthStats;->hostnamepatterns:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 42
    iget-object v8, p0, Lo/SystemHealthManager;->e:Ljava/util/ArrayList;

    new-instance v9, Lo/SystemHealthManager$TaskDescription;

    iget-object v10, v3, Lo/ServiceHealthStats;->category:Ljava/lang/String;

    invoke-direct {v9, p0, v7, v10}, Lo/SystemHealthManager$TaskDescription;-><init>(Lo/SystemHealthManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lo/SystemHealthManager;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 56
    iget-object v0, p0, Lo/SystemHealthManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SystemHealthManager$TaskDescription;

    .line 57
    iget-object v2, v1, Lo/SystemHealthManager$TaskDescription;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 59
    iget-object p1, v1, Lo/SystemHealthManager$TaskDescription;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "NOMATCH"

    :goto_0
    return-object p1
.end method
