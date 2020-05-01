.class public final enum Lcom/netflix/mediaclient/acquisition/view/SignupBackType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition/view/SignupBackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

.field public static final enum INTERRUPT_WITH_DIALOG:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

.field public static final enum NORMAL_BACK:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    const/4 v2, 0x0

    const-string v3, "INTERRUPT_WITH_DIALOG"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->INTERRUPT_WITH_DIALOG:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    const/4 v2, 0x1

    const-string v3, "NORMAL_BACK"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->NORMAL_BACK:Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->$VALUES:[Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/view/SignupBackType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition/view/SignupBackType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->$VALUES:[Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition/view/SignupBackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition/view/SignupBackType;

    return-object v0
.end method
