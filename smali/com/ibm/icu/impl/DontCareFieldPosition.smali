.class public final Lcom/ibm/icu/impl/DontCareFieldPosition;
.super Ljava/text/FieldPosition;
.source ""


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/DontCareFieldPosition;

    invoke-direct {v0}, Lcom/ibm/icu/impl/DontCareFieldPosition;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const v0, -0x366bb660    # -1214772.0f

    .line 30
    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setBeginIndex(I)V
    .locals 0

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    return-void
.end method
