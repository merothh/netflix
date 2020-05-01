.class final Lo/JO$ActionBar;
.super Lo/Ky$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lo/Ky$TaskDescription;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/Ky;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lo/Ky$TaskDescription;-><init>()V

    .line 104
    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    iput-object v0, p0, Lo/JO$ActionBar;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 105
    invoke-virtual {p1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/JO$ActionBar;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lo/Ky;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/JO$ActionBar;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lo/Ky;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/JO$ActionBar;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lo/Ky;Lo/JO$2;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lo/JO$ActionBar;-><init>(Lo/Ky;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lo/Ky$TaskDescription;
    .locals 0

    .line 119
    iput-object p1, p0, Lo/JO$ActionBar;->c:Ljava/lang/String;

    return-object p0
.end method

.method d(I)Lo/Ky$TaskDescription;
    .locals 0

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/JO$ActionBar;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky$TaskDescription;
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lo/JO$ActionBar;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object p0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null lomo"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d(Ljava/lang/String;)Lo/Ky$TaskDescription;
    .locals 0

    .line 124
    iput-object p1, p0, Lo/JO$ActionBar;->b:Ljava/lang/String;

    return-object p0
.end method

.method e()Lo/Ky;
    .locals 8

    .line 135
    iget-object v0, p0, Lo/JO$ActionBar;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lomo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lo/JO$ActionBar;->d:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " positionInUi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    new-instance v0, Lo/JO;

    iget-object v3, p0, Lo/JO$ActionBar;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iget-object v4, p0, Lo/JO$ActionBar;->c:Ljava/lang/String;

    iget-object v5, p0, Lo/JO$ActionBar;->b:Ljava/lang/String;

    iget-object v1, p0, Lo/JO$ActionBar;->d:Ljava/lang/Integer;

    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/JO;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;ILo/JO$2;)V

    return-object v0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
