.class public final enum Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoGroupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

.field public static final enum e:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const/4 v1, 0x0

    const-string v2, "INITIAL"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->e:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 167
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const/4 v2, 0x1

    const-string v3, "TEST_ONGOING"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->a:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 169
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    .line 165
    sget-object v5, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->e:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->a:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->d:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
    .locals 1

    .line 165
    const-class v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
    .locals 1

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->d:[Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    return-object v0
.end method
