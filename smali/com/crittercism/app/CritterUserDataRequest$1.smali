.class final Lcom/crittercism/app/CritterUserDataRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crittercism/app/CritterUserDataRequest;


# direct methods
.method constructor <init>(Lcom/crittercism/app/CritterUserDataRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v0}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/internal/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/dk;->run()V

    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v1}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/internal/dk;

    move-result-object v1

    iget-object v1, v1, Lcom/crittercism/internal/dk;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v0}, Lcom/crittercism/app/CritterUserDataRequest;->b(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/internal/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v1}, Lcom/crittercism/app/CritterUserDataRequest;->d(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/app/CritterCallback;

    move-result-object v1

    new-instance v2, Lcom/crittercism/app/CritterUserData;

    iget-object v3, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v3}, Lcom/crittercism/app/CritterUserDataRequest;->c(Lcom/crittercism/app/CritterUserDataRequest;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/crittercism/app/CritterUserData;-><init>(Ljava/util/Map;Z)V

    invoke-interface {v1, v2}, Lcom/crittercism/app/CritterCallback;->onCritterDataReceived(Lcom/crittercism/app/CritterUserData;)V

    return-void
.end method
