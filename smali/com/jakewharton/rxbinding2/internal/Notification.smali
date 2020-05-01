.class public final enum Lcom/jakewharton/rxbinding2/internal/Notification;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jakewharton/rxbinding2/internal/Notification;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/jakewharton/rxbinding2/internal/Notification;

.field private static final synthetic c:[Lcom/jakewharton/rxbinding2/internal/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/jakewharton/rxbinding2/internal/Notification;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/jakewharton/rxbinding2/internal/Notification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->a:Lcom/jakewharton/rxbinding2/internal/Notification;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jakewharton/rxbinding2/internal/Notification;

    .line 7
    sget-object v2, Lcom/jakewharton/rxbinding2/internal/Notification;->a:Lcom/jakewharton/rxbinding2/internal/Notification;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->c:[Lcom/jakewharton/rxbinding2/internal/Notification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jakewharton/rxbinding2/internal/Notification;
    .locals 1

    .line 7
    const-class v0, Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jakewharton/rxbinding2/internal/Notification;

    return-object p0
.end method

.method public static values()[Lcom/jakewharton/rxbinding2/internal/Notification;
    .locals 1

    .line 7
    sget-object v0, Lcom/jakewharton/rxbinding2/internal/Notification;->c:[Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-virtual {v0}, [Lcom/jakewharton/rxbinding2/internal/Notification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jakewharton/rxbinding2/internal/Notification;

    return-object v0
.end method
