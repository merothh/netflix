.class final Lcom/crittercism/internal/ax$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/ax$2;->a:Lcom/crittercism/internal/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "MAYBE LATER button failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
