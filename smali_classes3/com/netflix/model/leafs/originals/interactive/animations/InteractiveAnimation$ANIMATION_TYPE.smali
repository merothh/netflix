.class public interface abstract annotation Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation$ANIMATION_TYPE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ANIMATION_TYPE"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPACITY:Ljava/lang/String; = "opacity"

.field public static final POSITION:Ljava/lang/String; = "position"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSITION_X:Ljava/lang/String; = "position.x"

.field public static final POSITION_Y:Ljava/lang/String; = "position.y"

.field public static final SCALE:Ljava/lang/String; = "scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCALE_X:Ljava/lang/String; = "scale.x"

.field public static final TRANSFORM_SCALE:Ljava/lang/String; = "transform.scale"

.field public static final TRANSLATION:Ljava/lang/String; = "translation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final X:Ljava/lang/String; = "x"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Y:Ljava/lang/String; = "y"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field
