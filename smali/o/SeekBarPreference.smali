.class public final Lo/SeekBarPreference;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Lcom/google/gson/JsonPrimitive;

.field private static final d:Lcom/google/gson/JsonPrimitive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lo/SeekBarPreference;->b:Lcom/google/gson/JsonPrimitive;

    .line 6
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lo/SeekBarPreference;->d:Lcom/google/gson/JsonPrimitive;

    return-void
.end method

.method public static final b()Lcom/google/gson/JsonPrimitive;
    .locals 1

    .line 5
    sget-object v0, Lo/SeekBarPreference;->b:Lcom/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public static final d()Lcom/google/gson/JsonPrimitive;
    .locals 1

    .line 6
    sget-object v0, Lo/SeekBarPreference;->d:Lcom/google/gson/JsonPrimitive;

    return-object v0
.end method
