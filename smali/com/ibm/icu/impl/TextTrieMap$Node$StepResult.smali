.class public Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TextTrieMap$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StepResult"
.end annotation


# instance fields
.field public node:Lcom/ibm/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field

.field public offset:I

.field final synthetic this$1:Lcom/ibm/icu/impl/TextTrieMap$Node;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/TextTrieMap$Node;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->this$1:Lcom/ibm/icu/impl/TextTrieMap$Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
