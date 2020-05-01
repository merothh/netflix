.class final Lo/PreferenceManager;
.super Lo/PreferenceGroupAdapter;
.source ""


# instance fields
.field private final b:Lcom/google/gson/JsonElement;

.field private final e:Lcom/google/gson/JsonElement;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lo/PreferenceGroupAdapter;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/PreferenceManager;->e:Lcom/google/gson/JsonElement;

    iput-object p2, p0, Lo/PreferenceManager;->b:Lcom/google/gson/JsonElement;

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lo/PreferenceManager;->e:Lcom/google/gson/JsonElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PreferenceManager;->b:Lcom/google/gson/JsonElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PreferenceManager;->e:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", that="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/PreferenceManager;->b:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
