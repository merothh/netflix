.class public final Lo/NfcBarcode;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final d:Lo/NfcBarcode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/NfcBarcode;

    invoke-direct {v0}, Lo/NfcBarcode;-><init>()V

    sput-object v0, Lo/NfcBarcode;->d:Lo/NfcBarcode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "Insecticide"

    .line 9
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "throwable"

    invoke-static {p1, p0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
