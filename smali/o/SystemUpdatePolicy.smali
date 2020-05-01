.class public final Lo/SystemUpdatePolicy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentProviderOperation$StateListAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)Lo/BackupAgentHelper;
    .locals 1

    .line 19
    new-instance v0, Lo/afp;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/afp;-><init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)V

    return-object v0
.end method
