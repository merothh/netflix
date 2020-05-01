.class public final synthetic Lo/PackedIntVector;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->values()[Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/PackedIntVector;->a:[I

    sget-object v0, Lo/PackedIntVector;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->c:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/PackedIntVector;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->e:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/PackedIntVector;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
