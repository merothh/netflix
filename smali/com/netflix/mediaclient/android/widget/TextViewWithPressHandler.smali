.class public Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;
.super Landroid/widget/TextView;
.source "TextViewWithPressHandler.java"


# instance fields
.field private pressedHandler:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;->pressedHandler:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    .line 29
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/TextViewWithPressHandler;->pressedHandler:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;->handleSetPressed(Z)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchSetPressed(Z)V

    .line 35
    return-void
.end method
