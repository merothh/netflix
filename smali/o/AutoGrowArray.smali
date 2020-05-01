.class public final Lo/AutoGrowArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackSynthesisCallback;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/TextToSpeech;

.field private final c:Lcom/netflix/android/moneyball/fields/BooleanField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)V
    .locals 1

    const-string v0, "booleanField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoGrowArray;->c:Lcom/netflix/android/moneyball/fields/BooleanField;

    iput-object p2, p0, Lo/AutoGrowArray;->b:Lo/TextToSpeech;

    .line 9
    iget-object p1, p0, Lo/AutoGrowArray;->c:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/AutoGrowArray;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/AutoGrowArray;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object v0, p0, Lo/AutoGrowArray;->c:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lo/AutoGrowArray;->b:Lo/TextToSpeech;

    invoke-virtual {p0}, Lo/AutoGrowArray;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/TextToSpeech;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/netflix/android/moneyball/fields/BooleanField;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/AutoGrowArray;->c:Lcom/netflix/android/moneyball/fields/BooleanField;

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/AutoGrowArray;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 2

    .line 12
    iget-object v0, p0, Lo/AutoGrowArray;->c:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/BooleanField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/AutoGrowArray;->a:Ljava/lang/String;

    return-object v0
.end method
