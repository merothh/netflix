.class public final synthetic Lo/Ni;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/Ni;->b:[I

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->a:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->h:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->e:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->j:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lo/Ni;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    return-void
.end method
