.class public final Lcom/crittercism/internal/bv$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    invoke-static {}, Lcom/crittercism/internal/bv;->c()Lcom/crittercism/internal/bd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/crittercism/internal/bd;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/crittercism/internal/bv;->d()Lcom/crittercism/internal/bz;

    move-result-object v0

    invoke-interface {v0}, Lcom/crittercism/internal/bz;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "logcat"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bv$l;->a:Lorg/json/JSONArray;

    return-object v0
.end method
