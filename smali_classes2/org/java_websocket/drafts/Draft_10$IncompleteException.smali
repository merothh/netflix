.class Lorg/java_websocket/drafts/Draft_10$IncompleteException;
.super Ljava/lang/Throwable;
.source "Draft_10.java"


# instance fields
.field private preferedsize:I

.field final synthetic this$0:Lorg/java_websocket/drafts/Draft_10;


# direct methods
.method public constructor <init>(Lorg/java_websocket/drafts/Draft_10;I)V
    .locals 0

    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->this$0:Lorg/java_websocket/drafts/Draft_10;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput p2, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return-void
.end method


# virtual methods
.method public getPreferedSize()I
    .locals 1

    iget v0, p0, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->preferedsize:I

    return v0
.end method
