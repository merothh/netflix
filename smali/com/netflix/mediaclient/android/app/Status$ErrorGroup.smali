.class public final enum Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/app/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum b:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum c:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum e:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field private static final synthetic f:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum g:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum i:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v1, 0x0

    const-string v2, "NetworkError"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v2, 0x1

    const-string v3, "HttpError"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->c:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v3, 0x2

    const-string v4, "MslError"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->e:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v4, 0x3

    const-string v5, "DrmError"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->b:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v5, 0x4

    const-string v6, "PlayApiError"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->a:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v6, 0x5

    const-string v7, "ManifestError"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->g:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v7, 0x6

    const-string v8, "SubtitleError"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->i:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 31
    sget-object v8, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->d:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->c:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->e:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->b:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->a:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->g:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->i:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->f:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 1

    .line 31
    const-class v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->f:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object v0
.end method
