.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum g:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field private static final synthetic j:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v1, 0x0

    const-string v2, "nonMemberLanding"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v2, 0x1

    const-string v3, "login"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v3, 0x2

    const-string v4, "appMenu"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v4, 0x3

    const-string v5, "returnTo"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v5, 0x4

    const-string v6, "notification"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v6, 0x5

    const-string v7, "errorDialog"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->g:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v7, 0x6

    const-string v8, "profileGate"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->i:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 30
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->e:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->b:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->d:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->c:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->a:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->g:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->i:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->j:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .line 30
    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->j:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method
