.class public interface abstract Lo/UsbInterface;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lcom/fasterxml/jackson/core/io/SerializedString;

.field public static final d:Lcom/fasterxml/jackson/core/util/Separators;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/fasterxml/jackson/core/util/Separators;->b()Lcom/fasterxml/jackson/core/util/Separators;

    move-result-object v0

    sput-object v0, Lo/UsbInterface;->d:Lcom/fasterxml/jackson/core/util/Separators;

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    const-string v1, " "

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/UsbInterface;->c:Lcom/fasterxml/jackson/core/io/SerializedString;

    return-void
.end method
