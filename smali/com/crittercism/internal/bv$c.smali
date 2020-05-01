.class public final Lcom/crittercism/internal/bv$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/crittercism/internal/bv;->a()Lcom/crittercism/internal/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/crittercism/internal/aq;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "app_version"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    return-object v0
.end method
