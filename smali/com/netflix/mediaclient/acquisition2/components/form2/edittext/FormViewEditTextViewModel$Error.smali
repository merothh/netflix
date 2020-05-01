.class public final enum Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

.field private static final synthetic b:[Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

.field public static final enum c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

.field public static final enum e:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    const/4 v2, 0x0

    const-string v3, "LENGTH"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->e:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    const/4 v2, 0x1

    const-string v3, "EMPTY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    const/4 v2, 0x2

    const-string v3, "REGEX"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->b:[Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->b:[Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    return-object v0
.end method
