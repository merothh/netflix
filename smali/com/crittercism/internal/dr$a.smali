.class public final Lcom/crittercism/internal/dr$a;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Lcom/crittercism/internal/dr;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/dr;)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/dr$a;->a:Lcom/crittercism/internal/dr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/dr$a;->a:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->b()Z

    return-void
.end method
