.class public final enum Lcom/netflix/mediaclient/repository/SecureStoreProvider;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/repository/SecureStoreProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/repository/SecureStoreProvider;

.field private static final synthetic c:[Lcom/netflix/mediaclient/repository/SecureStoreProvider;


# instance fields
.field private d:Lo/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/repository/SecureStoreProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->b:Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    .line 11
    sget-object v2, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->b:Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->c:[Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/repository/SecureStoreProvider;
    .locals 1

    .line 11
    const-class v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/repository/SecureStoreProvider;
    .locals 1

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->c:[Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/repository/SecureStoreProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/repository/SecureStoreProvider;

    return-object v0
.end method


# virtual methods
.method public a(Lo/ds;)V
    .locals 1

    .line 22
    new-instance v0, Lo/bv;

    invoke-direct {v0, p1}, Lo/bv;-><init>(Lo/ds;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->d:Lo/bv;

    return-void
.end method

.method public b()Lo/bx;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/SecureStoreProvider;->d:Lo/bv;

    return-object v0
.end method
