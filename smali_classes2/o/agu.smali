.class public final Lo/agu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Browser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agu$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/agu$ActionBar;


# instance fields
.field private c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

.field private d:Lo/OneTimeUseBuilder;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/agu$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/agu$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/agu;->b:Lo/agu$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lo/agu;->e:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p1

    check-cast p1, Lo/agi;

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6eb9585a

    if-eq v0, v1, :cond_1

    const v1, -0x221a9f30

    if-ne v0, v1, :cond_2

    const-string v0, "resultItem"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/agu;->d:Lo/OneTimeUseBuilder;

    check-cast p1, Lo/BlockedNumberContract;

    goto :goto_0

    :cond_1
    const-string v0, "summary"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/agu;->c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    check-cast p1, Lo/BlockedNumberContract;

    .line 45
    :goto_0
    check-cast p1, Lo/agi;

    :goto_1
    return-object p1

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    instance-of v0, p2, Lo/SettingsSlicesContract;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lo/agu;->e:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lo/agu;->e:Z

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6eb9585a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x221a9f30

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "resultItem"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agu;->d:Lo/OneTimeUseBuilder;

    goto :goto_1

    :cond_2
    check-cast v2, Lo/OneTimeUseBuilder;

    iput-object v2, p0, Lo/agu;->d:Lo/OneTimeUseBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "summary"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    check-cast p2, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    iput-object p2, p0, Lo/agu;->c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    goto :goto_1

    .line 83
    :cond_4
    check-cast v2, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    iput-object v2, p0, Lo/agu;->c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    goto :goto_1

    .line 85
    :cond_5
    :goto_0
    sget-object p1, Lo/agu;->b:Lo/agu$ActionBar;

    check-cast p1, Lo/MessagePdu;

    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lo/agu;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6eb9585a

    if-eq v0, v1, :cond_1

    const v1, -0x221a9f30

    if-ne v0, v1, :cond_2

    const-string v0, "resultItem"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agu;->d:Lo/OneTimeUseBuilder;

    check-cast p1, Lo/agi;

    goto :goto_0

    :cond_1
    const-string v0, "summary"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;-><init>()V

    iput-object p1, p0, Lo/agu;->c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    check-cast p1, Lo/agi;

    :goto_0
    return-object p1

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6eb9585a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x221a9f30

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "resultItem"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v2, Lo/OneTimeUseBuilder;

    iput-object v2, p0, Lo/agu;->d:Lo/OneTimeUseBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "summary"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v2, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    iput-object v2, p0, Lo/agu;->c:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    sget-object p1, Lo/agu;->b:Lo/agu$ActionBar;

    check-cast p1, Lo/MessagePdu;

    :goto_1
    return-void
.end method
