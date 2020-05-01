.class public final enum Lcom/netflix/cl/model/MemberIdInputKind;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/cl/model/MemberIdInputKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/cl/model/MemberIdInputKind;

.field public static final enum email:Lcom/netflix/cl/model/MemberIdInputKind;

.field public static final enum phoneNumber:Lcom/netflix/cl/model/MemberIdInputKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/netflix/cl/model/MemberIdInputKind;

    const/4 v1, 0x0

    const-string v2, "email"

    invoke-direct {v0, v2, v1}, Lcom/netflix/cl/model/MemberIdInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/MemberIdInputKind;->email:Lcom/netflix/cl/model/MemberIdInputKind;

    .line 8
    new-instance v0, Lcom/netflix/cl/model/MemberIdInputKind;

    const/4 v2, 0x1

    const-string v3, "phoneNumber"

    invoke-direct {v0, v3, v2}, Lcom/netflix/cl/model/MemberIdInputKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/cl/model/MemberIdInputKind;->phoneNumber:Lcom/netflix/cl/model/MemberIdInputKind;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/cl/model/MemberIdInputKind;

    .line 6
    sget-object v3, Lcom/netflix/cl/model/MemberIdInputKind;->email:Lcom/netflix/cl/model/MemberIdInputKind;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/cl/model/MemberIdInputKind;->phoneNumber:Lcom/netflix/cl/model/MemberIdInputKind;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/cl/model/MemberIdInputKind;->$VALUES:[Lcom/netflix/cl/model/MemberIdInputKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/MemberIdInputKind;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/cl/model/MemberIdInputKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/cl/model/MemberIdInputKind;

    return-object p0
.end method

.method public static values()[Lcom/netflix/cl/model/MemberIdInputKind;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/cl/model/MemberIdInputKind;->$VALUES:[Lcom/netflix/cl/model/MemberIdInputKind;

    invoke-virtual {v0}, [Lcom/netflix/cl/model/MemberIdInputKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/cl/model/MemberIdInputKind;

    return-object v0
.end method
